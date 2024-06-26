public class MiddleElementFinder {
    public List<Integer> findMiddleElement(List<Integer> ints) {
        List<Integer> answer = new List<Integer>();
        if (ints == null || ints.size() == 0) {
            return answer;
        }
        Integer middleIndex = ints.size() / 2;
        if (Math.mod(ints.size(), 2) == 0) {
            answer.add(ints[middleIndex - 1]);
            answer.add(ints[middleIndex]);
        } else {
            answer.add(ints[middleIndex]);
        }
        return answer;
    }
}