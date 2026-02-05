public class AtbashCipher {

    // Method to encode/decode string
    public static String applyAtbash(String input) {
        StringBuilder result = new StringBuilder();

        for (char character : input.toCharArray()) {
            if (Character.isLetter(character)) {
                // Determine the 'anchor' (A or a)
                char base = Character.isUpperCase(character) ? 'A' : 'a';
                
                // Atbash Math: ('Z' - (char - 'A')) 
                // Simplified: (base + 25) - (character - base)
                char mirroredChar = (char) ((base + 25) - (character - base));
                
                result.append(mirroredChar);
            } else {
                // Non-letters (numbers, spaces) remain unchanged
                result.append(character);
            }
        }
        return result.toString();
    }

    public static void main(String[] args) {
        System.out.println("--- 5 Atbash Java Examples ---");

        // Example 1: Reciprocal Word
        System.out.println("1. ZOO      -> " + applyAtbash("ZOO"));

        // Example 2: Reciprocal Word
        System.out.println("2. GLOW     -> " + applyAtbash("GLOW"));

        // Example 3: Reciprocal Word
        System.out.println("3. ARK      -> " + applyAtbash("ARK"));

        // Example 4: Mixed Characters
        System.out.println("4. PYRAMID  -> " + applyAtbash("PYRAMID"));
        System.out.println("4. PYRAMID  -> " + applyAtbash("PYRAMID"));


        // Example 5: Numbers (Unchanged)
        System.out.println("5. A1B2C3   -> " + applyAtbash("A1B2C3"));
    }
}
