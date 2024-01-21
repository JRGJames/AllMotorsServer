package alpha.allmotors.api;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.MessageEntity;
import alpha.allmotors.service.MessageService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/message")
public class MessageApi {

    @Autowired
    private MessageService messageService;

    @GetMapping("/getAll/{id}")
    public ResponseEntity<List<MessageEntity>> getAllMessages(@PathVariable("id") Long chatId) {
        List<MessageEntity> messages = messageService.getMessagesByChat(chatId);
        return ResponseEntity.ok(messages);
    }

    @PostMapping("/send")
    public ResponseEntity<MessageEntity> sendMessage(@RequestBody MessageEntity message, @PathVariable("id_car") Long carId) {
        return ResponseEntity.ok(messageService.sendMessage(message, carId));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteMessage(@PathVariable("id") Long messageId) {
        messageService.deleteMessage(messageId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/count/{chatId}")
    public ResponseEntity<Long> countMessagesInChat(@PathVariable("chatId") Long chatId) {
        long totalMessageCount = messageService.countMessagesInChat(chatId);
        return ResponseEntity.ok(totalMessageCount);
    }
}
