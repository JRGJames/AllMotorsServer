package alpha.allmotors.helper;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import javax.xml.bind.DatatypeConverter;

import alpha.allmotors.exception.CannotPerformOperationException;

public class DataGenerationHelper {

    private static final String[] names = { "Mónica", "José Antonio", "Laura", "Lucas", "Eva", "Eloy", "Jesús", "Alan",
            "Pablo", "Paula", "Raquel", "Nieves", "Elena", "Sergio", "Jaime", "Fernando", "Rafael" };

    private static final String[] surnames = {
            "Alcañiz", "Puig", "Ayala", "Farell", "Ferrer", "Esteve", "González", "Rozalén", "Lara", "Velarte",
            "Latorre", "Briones", "Maldonado", "Suárez", "McLure", "Alarcón", "Molero", "Marín", "Muñoz", "García",
            "Navarro", "López", "Navas", "Aguilar", "Ortega", "Fabra", "Romero", "Díaz", "Cano", "Roselló", "Gómez",
            "Serrano", "Quilez", "Aznar", "Aparici"
    };

    public static int getRandomInt(int min, int max) {
        Random rand = new Random();
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }

    public static String getRandomName() {
        return names[(int) (Math.random() * names.length)];
    }

    public static String getRandomSurname() {
        return surnames[(int) (Math.random() * surnames.length)];
    }

    public static String doNormalizeString(String cadena) {
        String original = "áàäéèëíìïóòöúùuñÁÀÄÉÈËÍÌÏÓÒÖÚÙÜÑçÇ";
        String ascii = "aaaeeeiiiooouuunAAAEEEIIIOOOUUUNcC";
        String cadenaSinAcentos = cadena;
        for (int i = 0; i < original.length(); i++) {
            cadenaSinAcentos = cadenaSinAcentos.replace(original.charAt(i), ascii.charAt(i));
        }
        return cadenaSinAcentos;
    }

    private static Random random = new Random();

    // Define arrays for different word categories
    private static String[] articles = { "the", "a", "one" };
    private static String[] nouns = { "cat", "dog", "book", "birds", "sun", "sandwich", "friend", "car", "house" };
    private static String[] verbs = { "sleeps", "barks", "reads", "fly", "shines", "run", "ate", "is" };
    private static String[] adverbs = { "loudly", "quickly", "brightly", "slowly", "softly" };
    private static String[] conjunctions = { "and", "but", "or" };
    private static String[] subordinatingConjunctions = { "although", "because", "while", "if", "when", "as", "after",
            "before", "since", "until", "unless", "where", "wherever", "whether", "while", "even if", "even though",
            "once", "provided that", "so that", "than", "though", "in order to", "so that", "that", "unless", "until",
            "when", "whenever", "where", "wherever", "whether", "while" };

    public static String generateSentence() {
        // Randomly decide if it's a simple, compound, or complex sentence
        int sentenceType = random.nextInt(3);
        if (sentenceType == 0) {
            return generateSimpleSentence();
        } else if (sentenceType == 1) {
            return generateCompoundSentence();
        } else {
            return generateComplexSentence();
        }
    }

    public static String generateSimpleSentence() {
        String subject = generateNounPhrase();
        String verb = generateVerbPhrase();
        return subject + " " + verb;
    }

    public static String generateCompoundSentence() {
        String simpleSentence1 = generateSimpleSentence();
        String conjunction = conjunctions[random.nextInt(conjunctions.length)];
        String simpleSentence2 = generateSimpleSentence();
        return simpleSentence1 + " " + conjunction + " " + simpleSentence2;
    }

    public static String generateComplexSentence() {
        String subordinatingConjunction = subordinatingConjunctions[random.nextInt(subordinatingConjunctions.length)];
        String subordinateClause = subordinatingConjunction + " " + generateSimpleSentence();
        String mainClause = generateMainClause();
        return subordinateClause + " " + mainClause;
    }

    public static String generateMainClause() {
        if (random.nextBoolean()) {
            return generateSimpleSentence();
        } else {
            return generateCompoundSentence();
        }
    }

    public static String generateNounPhrase() {
        String article = articles[random.nextInt(articles.length)];
        String noun = nouns[random.nextInt(nouns.length)];
        return article + " " + noun;
    }

    public static String generateVerbPhrase() {
        String verb = verbs[random.nextInt(verbs.length)];
        // Randomly decide if it's just a verb or a verb with an adverb
        if (random.nextBoolean()) {
            String adverb = adverbs[random.nextInt(adverbs.length)];
            return verb + " " + adverb;
        } else {
            return verb;
        }
    }

    public static String getSpeech(int amount) {
        String sentences = "";
        for (int i = 0; i < amount; i++) {
            String sentence = generateSentence();
            sentences += sentence.substring(0, 1).toUpperCase() + sentence.substring(1) + ". ";
        }
        return sentences;
    }

    public static LocalDateTime getRandomDate() {
        long minDay = LocalDate.of(1930, 1, 1).toEpochDay();
        long maxDay = LocalDate.of(2023, 10, 31).toEpochDay();
        long randomDay = ThreadLocalRandom.current().nextLong(minDay, maxDay);
        return LocalDate.ofEpochDay(randomDay).atTime(getRandomInt(0, 23), getRandomInt(0, 59), getRandomInt(0, 59));

    }

    public static String getSHA256(String strToHash) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(strToHash.getBytes(StandardCharsets.UTF_8));
            return DatatypeConverter.printHexBinary(digest).toLowerCase();
        } catch (NoSuchAlgorithmException ex) {
            throw new CannotPerformOperationException("no such algorithm: sha256");
        }
    }

    private static final String[] genders = { "woman", "man", "prefer not to say" };

    public static String getRandomGender() {
        return genders[new Random().nextInt(genders.length)];
    }

    private static final String[] countries = {
            "Argentina", "Brazil", "Canada", "France", "Germany", "India", "Japan",
            "Mexico", "Spain", "United Kingdom", "United States", "Australia", "China",
            "Italy", "South Africa", "South Korea", "Russia", "Turkey", "Sweden", "Norway"
            // Add more countries as needed
    };

    public static String getRandomCountry() {
        return countries[new Random().nextInt(countries.length)];
    }

    private static final String[] provinces = {
            "Ontario", "Quebec", "British Columbia", "Alberta", "Manitoba", "Saskatchewan",
            "Nova Scotia", "New Brunswick", "Newfoundland and Labrador", "Prince Edward Island",
            "Northwest Territories", "Yukon", "Nunavut", "Madrid", "Catalonia", "Andalusia",
            "Valencia", "Galicia", "Castile and León", "Basque Country"
            // Add more provinces as needed
    };

    public static String getRandomProvince() {
        return provinces[new Random().nextInt(provinces.length)];
    }

    private static final String[] streetNames = {
            "Main Street", "Oak Avenue", "Maple Lane", "Cedar Road", "Pine Street", "Elm Boulevard",
            "Sunset Drive", "Meadow Lane", "River Road", "Mountain View", "Lake Shore", "Highland Avenue",
            "Park Avenue", "Forest Drive", "Hilltop Road", "Valley Lane", "Ocean View", "Greenway",
            "Skyline Drive", "Golden Gate"
            // Add more street names as needed
    };

    public static String getRandomAddress() {
        String streetName = streetNames[new Random().nextInt(streetNames.length)];
        int streetNumber = new Random().nextInt(60) + 1; // Generate a random number between 1 and 999
        return streetNumber + " " + streetName;
    }

    private static final String[] postalCodeFormats = {
            "A1A 1A1", "V1H 3R9", "10001", "WC2N 5DU", "75001", "2000", "H0H 0H0",
            "08001", "10115", "400001", "20000-000", "71000-000", "100000", "00100",
            "K1A 0B1", "07100", "10178", "190000", "34437", "01001-001"
            // Add more postal code formats as needed
    };

    private static String generateRandomPostalCode(String format) {
        StringBuilder postalCodeBuilder = new StringBuilder();
        for (char c : format.toCharArray()) {
            if (c == 'A') {
                postalCodeBuilder.append((char) ('A' + new Random().nextInt(26))); // Random uppercase letter
            } else if (c == '0') {
                postalCodeBuilder.append(new Random().nextInt(10)); // Random digit
            } else {
                postalCodeBuilder.append(c);
            }
        }
        return postalCodeBuilder.toString();
    }

    public static String getRandomPostalCode() {
        String postalCodeFormat = postalCodeFormats[new Random().nextInt(postalCodeFormats.length)];
        String postalCode = generateRandomPostalCode(postalCodeFormat);

        return postalCode;
    }

    public static boolean getRandomStatus() {
        return new Random().nextBoolean();
    }

    public static String getRandomPhoneNumber() {
        // Genera un número de teléfono aleatorio de 9 cifras
        return String.format("%09d", new Random().nextInt(1_000_000_000));
    }
}
