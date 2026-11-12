String longestUniqueSubstring(String str) {
    String current = "";
    String longest = "";

    for (int i = 0; i < str.length; i++) {
        String character = str[i];

        if (current.contains(character)) {
           int position = current.indexOf(character);
           current = current.substring(position + 1);
        }
        current += character;

        if (current.length > longest.length) {
                longest = current;
        }
    }
    return longest;
}
