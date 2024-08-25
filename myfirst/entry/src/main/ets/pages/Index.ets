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