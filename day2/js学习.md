## 计算66的阶乘

for(var j = 1,i=2;i<=66;i++){

  j = j*i;

  // console.log(i);

  console.log(j);

}



## 倒等腰三角形

        for (var i = 10; i >= 1; i--) { 
            for (var k = 0; k < 10 - i; k++) {
                document.write('&nbsp;&nbsp;&nbsp;');
            }
            for (var j = 0; j < i; j++) {   
                document.write('$&nbsp;&nbsp;&nbsp;&nbsp;');
            }
            document.write('<br />');
        }



##  计算阶乘的函数

```
function factorial(a){
    if(a <= 1) {
         return 1;      
    }else{
          return a * factorial(a-1);   
    }
}
```

