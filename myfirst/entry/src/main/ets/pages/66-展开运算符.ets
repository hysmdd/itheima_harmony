// ... 展开运算符
let arr1: number[] = [1,2,3]
let arr2: number[] = [4,5,6]
let newArr: number[] = [...arr1, ...arr2]
console.log("新的数组", newArr)

@Entry
@Component
struct Index {
  build() {
  }
}