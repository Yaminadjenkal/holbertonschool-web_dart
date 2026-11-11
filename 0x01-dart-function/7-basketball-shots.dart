int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int scoreA =
        teamA['Free throws']! * 1 +
        teamA['2 pointers']! * 2 +
        teamA['3 pointers']! * 3;

    int scoreB =
        teamB['Free throws']! * 1 +
        teamB['2 pointers']! * 2 +
        teamB['3 pointers']! * 3;

    if (scoreA > scoreB) {
        return 1;
    } else if (scoreA < scoreB) {
        return 2;
    } else {
        return 0;
    }
}
