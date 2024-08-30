// ...数组名
function sum(n1: number, n2: number, ...argsArr: number[]) {
  let total = n1 + n2
  for(let temp of argsArr) {
    total += temp
  }
  console.log("结果", total)
  return total
}

sum(1, 2)
sum(1, 2, 3, 4)
sum(1, 2, 3, 4, 5, 6)

@Entry
@Component
struct Index {
  build() {
  }
}