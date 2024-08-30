// 泛型
function fn<T>(param: T): T {
  return param
}

fn<string>('你好')
fn<number>(3.14)
fn<boolean>(true)
fn<number[]>([1,2,3,4])

fn(1)
fn(true)
fn([1,2,3,4,5])

// 练习1：定义函数，参数是数组（存的类型不定），返回数组的长度
function getLength<T>(arr: T[]): number {
  return arr.length
}
console.log('数组长度：', getLength<number>([1,2,3]))
console.log('数组长度：', getLength<string>(['最好的安排', '愿你余生漫长', '与我无关', '女孩']))

// 练习2：定义函数，参数是数组（存的类型不定），返回数组的最后一项
function getLastElement<T>(arr: T[]): T {
  return arr[arr.length - 1]
}
console.log("数组最后一项：", getLastElement<number>([1,2,3,4, 59]))
console.log("数组最后一项：", getLastElement<string>(['最好的安排', '愿你余生漫长', '与我无关', '女孩']))

@Entry
@Component
struct Index {
  build() {
  }
}