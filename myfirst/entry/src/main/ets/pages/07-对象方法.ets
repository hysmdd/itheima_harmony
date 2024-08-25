// 需求：定义一个对象
// 姓名：邓恩熙 年龄：19 体重：88
// 行为：唱歌、跳舞

// 1. 定义接口
interface Person {
  name: string
  age: number
  weight: number
  sing: (song: string) => void
  dance: () => void
}

// 2. 基于接口，定义对象
let dex: Person = {
  name: '邓恩熙',
  age: 19,
  weight: 88,
  // 定义方法
  sing: (song: string) => {
    console.log("邓恩熙说", "我来唱首歌", song)
  },
  dance: () => {
    console.log("邓恩熙说", "我来跳个舞")
  }
}

// 3. 获取对象属性值
console.log("姓名", dex.name)
console.log("年龄", dex.age)
console.log("体重", dex.weight)
dex.sing("愿你余生漫长")
dex.dance()

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