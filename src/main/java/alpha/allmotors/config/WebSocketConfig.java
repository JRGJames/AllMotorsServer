package alpha.allmotors.config;

import alpha.allmotors.api.ChatHandler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {

    @Bean
    public ChatHandler chatHandler() {
        return new ChatHandler();
    }

        // @Override
        // public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        //     registry.addHandler(chatHandler(), "/initial/chat").setAllowedOrigins("*");
        // }

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(chatHandler(), "/chat").setAllowedOrigins("*");
    }
}
