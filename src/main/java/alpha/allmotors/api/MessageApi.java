package alpha.allmotors.api;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.entity.MessageEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.service.ChatService;
import alpha.allmotors.service.MessageService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/message")
public class MessageApi {

    @Autowired
    private MessageService messageService;

    @Autowired
    private ChatService chatService;

    @GetMapping("/getAll/{id}")
    public ResponseEntity<List<MessageEntity>> getAllMessages(@PathVariable("id") Long chatId) {
        List<MessageEntity> messages = messageService.getMessagesByChat(chatId);
        return ResponseEntity.ok(messages);
    }

    @PostMapping("/send")
    public ResponseEntity<MessageEntity> sendMessage(@RequestBody MessageEntity message, ChatEntity chat) {
        // Supongamos que los datos del remitente, destinatario y coche se obtienen de alguna manera,
        // ya que no se proporcionan directamente en el cuerpo de la solicitud.

        UserEntity sender = chatService.getSenderOfChat(chat.getId());
        UserEntity recipient = chatService.getRecipientOfChat(chat.getId());
        CarEntity car = chatService.getCarOfChat(chat.getId());

        // Llamar al servicio para enviar el mensaje y crear o recuperar el chat
        MessageEntity sentMessage = messageService.sendMessage(0, sender, recipient, chat, message.getContent(), car);

        return ResponseEntity.ok(sentMessage);
}

    @PostMapping("/like/{id}")
    public ResponseEntity<MessageEntity> likeMessage(@PathVariable("id") Long messageId) {
        MessageEntity likedMessage = messageService.likeMessage(messageId);
        if (likedMessage != null) {
            return ResponseEntity.ok(likedMessage);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/count/{chatId}")
    public ResponseEntity<Long> countMessagesInChat(@PathVariable("chatId") Long chatId) {
        long totalMessageCount = messageService.countMessagesInChat(chatId);
        return ResponseEntity.ok(totalMessageCount);
    }
}
