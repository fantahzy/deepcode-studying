## 349.两个数组的交集

先遍历一个数组的元素，然后在遍历另一个数组的元素是否在第一个数组之中。

class Solution:

  def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:

​    set1 = set(nums1)

​    set2 = set(nums2)

​    return self.set_intersection(set1, set2)



  def set_intersection(self, set1, set2):

​    if len(set1) > len(set2):

​      return self.set_intersection(set2, set1)

​    return [x for x in set1 if x in set2]



## 88.合并两个数组

1.合并后直接进行排序

class Solution:

  def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:

​    for i in range(n):nums1[m+i]=nums2[i]

​    nums1.sort()



2.看题解也可以用双指针，但是我不会QAQ，摆了！





## 234.回文链表

我的思路是利用索引找出数组中的最大值，然后比较最大值的左边，用循环判断是否递增，然后再与右半部分比较是否相等





