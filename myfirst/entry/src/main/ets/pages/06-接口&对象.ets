// 需求：定义一个对象
// 姓名：邓恩熙 年龄：19 体重：88

// 1. 定义接口
interface Person {
  name: string
  age: number
  weight: number
}

// 2. 基于接口，定义对象
let dex: Person = {
  name: '邓恩熙',
  age: 19,
  weight: 88
}

// 3. 获取对象属性值
console.log("姓名", dex.name)
console.log("年龄", dex.age)
console.log("体重", dex.weight)

// 基于接口，可以定义多次对象，这些对象有着相同的结构类型
let zjy: Person = {
  name: '张婧仪',
  age: 25,
  weight: 86
}
console.log("姓名", zjy.name)

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