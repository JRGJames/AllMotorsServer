package alpha.allmotors.exception;

import java.util.Date;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import alpha.allmotors.bean.ErrorResponseBean;

public class AppExceptionHandler {
    @ExceptionHandler(UnauthorizedException.class)
    public ResponseEntity<?> UnauthorizedException(UnauthorizedException ex, WebRequest request) {
        ErrorResponseBean errorDetails = new ErrorResponseBean(new Date(), HttpStatus.UNAUTHORIZED.name(),
                ex.getMessage(), request.getDescription(false));
        return new ResponseEntity<>(errorDetails, HttpStatus.UNAUTHORIZED);
    }

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<?> handleResourceNotFoundException(ResourceNotFoundException ex, WebRequest request) {
        ErrorResponseBean errorDetails = new ErrorResponseBean(new Date(), HttpStatus.NOT_FOUND.name(), ex.getMessage(),
                request.getDescription(false));
        return new ResponseEntity<>(errorDetails, HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<?> handleException(Exception ex, WebRequest request) {
        ErrorResponseBean errorDetails = new ErrorResponseBean(new Date(), HttpStatus.INTERNAL_SERVER_ERROR.name(),
                ex.getMessage(), request.getDescription(false));
        return new ResponseEntity<>(errorDetails, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}