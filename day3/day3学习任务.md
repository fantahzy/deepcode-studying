## 求平方字典

print('请输入一个数字：')
n=int(input())
d=dict()
for i in range(1,n+1):
    d[i]=i*i

print(d)



## m行n列数组

def hanshu(m,n,i):
    a = [i]*m
    for j in range(len(a)):
        a[j] = [i]*n 
    print(a)
    return
m=int(input("请输入行m"))
n=int(input("请输入列n"))
i=int(input("请输入数字i"))
hanshu(m,n,i)



## 斐波拉契数列

def fib(n):
    if n<0:
        return 0
    elif n in[1,2]:
        return 1
    else:
        return fib(n-1) + fib(n-2)
n=int(input("请输入数字n"))
fib(n)



n变大时，返回的计算结果变多又没有保存，所以下次调用的时候需要重新计算。

解决办法：每次计算的结果存放到一个字典里



know={1:1,2:1}
def fib2(n):
    if n in know:
        return know[n]
    else:
        res=fib2(n-1)+fib2(n-2)
        know[n]=res
        return res
n=int(input("请输入数字n"))
fib2(n)    

