## 1.两数之和思路

我的思路是用两个循环去遍历整个数组，然后发现嗯，耗时很长，然后上网搜了一下发现可以优化算法
1、在第一次num之后的列表进行寻找
2、字典模拟哈希求解（查了很多资料，看了很久，没学过数据结构，看不懂TuT）

class Solution:
    def twoSum(self,nums, target):
        n = len(nums)
        for x in range(n):
            for y in range(x+1,n):
                if nums[y] == target - nums[x]:
                    return x,y
                    break
                else:
                    continue

# 20.有效括号
数据结构方面不是很懂，于是上网搜了一下解法

class Solution:
    def isValid(self, s):
        while '{}' in s or '()' in s or '[]' in s:
            s = s.replace('{}', '')
            s = s.replace('[]', '')
            s = s.replace('()', '')
        return s == '' 

## 709.转换小写字母
class Solution:
    def toLowerCase(self, s: str) -> str:
        return s.lower()



