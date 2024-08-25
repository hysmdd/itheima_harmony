// console.log("我说", "终会与你同行")

// 变量的存储和修改（string boolean number)
// 1. 变量存储
// 1.1 字符串 string类型
let title: string = '巨无霸汉堡'
console.log('字符串title', title)

// 1.2 数字 number类型
let age: number = 25
console.log('年龄', age)

// 1.3 布尔 boolean类型
let isLogin: boolean = true
console.log('是否登录成功', isLogin)

// 2. 变量的修改
age = 19
console.log('更改后的年龄', age)

// 常量
const companyName: string = '华为'
console.log('公司名称: ', companyName)
const PI: number = 3.1415926
console.log('PI: ', PI)

// 命名规则
// ① 只能包含数字、字母、下划线、$，不能以数字开头
// let num-1: number = 27  // 错误，特殊字符
// let num_1: number = 27  // 正确
// let num$: number = 27  // 正确
// let num^: number = 27  // 错误 特殊字符

// let num1: number = 19  // 正确
// let 1num: Number = 19  // 错误 以数字开头

// ② 不能使用内置关键字或保留字
// let let: string = 'Martis'
// let const:string = 'Martis'

// ③ 严格区分大小写
// let myName: string = '白敬亭'
// let MyName: string = '杨洋'
// console.log('myName', myName)
// console.log('MyName', MyName)

@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}