import '9-palindrome.dart';

String longestPalindrome(String s) {
    String longest = "none";


    for (int start = 0;  start < s.length; start++) {
        for (int end = start + 2; end < s.length; end++) {
            String sub = s.substring(start, end + 1);

            if (isPalindrome(sub)) {
                if (longest == "none" || sub.length > longest.length) {
                    longest = sub;
                }
            }
        }
    }
    return longest;
}
