double findMedian(List<int> nums1, List<int> nums2) {
  List<int> mergedArray = nums1 + nums2;
  mergedArray.sort();


  if (mergedArray.length % 2 == 1) {
    return mergedArray[mergedArray.length ~/ 2].toDouble();
  } else {
    return (mergedArray[mergedArray.length ~/ 2 - 1] + mergedArray[mergedArray.length ~/ 2]) / 2.0;
  }
}
void main(List<String> args) {
  print(findMedian([1,2,4], [3]));
}
