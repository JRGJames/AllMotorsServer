package alpha.allmotors.api;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.entity.MessageEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.service.ChatService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
// @RequestMapping("/initial/chat")
@RequestMapping("/chat")
public class ChatApi {

    @Autowired
    private ChatService chatService;

    @PostMapping("/create")
    public ResponseEntity<?> createChat(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {
        if (chatService.isThereCar(car)) {
            return ResponseEntity.ok(chatService.findChatUsersCar(memberOne, memberTwo, car));
        } else {
            return ResponseEntity.ok(chatService.findChatUsers(memberOne, memberTwo));
        }
    }

    @GetMapping("/get/{id}")
    public ResponseEntity<List<ChatEntity>> getAllChats(@PathVariable("id") Long userId) {
        return ResponseEntity.ok(chatService.getChatsByUser(userId));
    }

    @GetMapping("/getUnread/{id}")
    public ResponseEntity<Long> getUnread(@PathVariable("id") Long chatId, @RequestParam("userId") Long userId) {
        return ResponseEntity.ok(chatService.getChatNotifications(chatId, userId));
    }

    @GetMapping("/messages/{id}")
    public ResponseEntity<List<MessageEntity>> getMessagesByChatId(@PathVariable("id") Long chatId) {
        return ResponseEntity.ok(chatService.getMessagesByChatId(chatId));
    }

    // @GetMapping("/get")
    // public ResponseEntity<?> getAllChats(@RequestParam("userId") UserEntity
    // userId) {
    // return ResponseEntity.ok(chatService.getChatsByUser(userId));
    // }

    @GetMapping("/getByUsers")
    public ResponseEntity<ChatEntity> getChatByUsers(@RequestParam("memberOne") UserEntity memberOne,
            @RequestParam("memberTwo") UserEntity memberTwo) {
        return ResponseEntity.ok(chatService.getChatByUsersWithoutCar(memberOne, memberTwo));
    }

    @GetMapping("/getByUsersCar")
    public ResponseEntity<ChatEntity> getChatByUsersAndCar(@RequestParam("memberOne") UserEntity memberOne,
            @RequestParam("memberTwo") UserEntity memberTwo, @RequestParam("car") CarEntity car) {
        return ResponseEntity.ok(chatService.getChatByUsersAndCar(memberOne, memberTwo, car));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteChat(@PathVariable("id") Long chatId,
            @RequestParam("userId") UserEntity userId) {
        // Lógica para eliminar un chat
        chatService.deleteChatForUser(chatId, userId);
        return ResponseEntity.ok("Chat eliminado correctamente");
    }
}
