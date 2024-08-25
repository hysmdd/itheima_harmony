// 需求：利用枚举类型，给变量设置主色
// 取色范围：
// 红色 '#ff0f29'
// 橙色 '#ff7100'
// 绿色 '#30b30e'

// 1. 定义枚举
enum ThemeColor {
  Red = '#ff0f29',
  Orange = '#ff7100',
  Green = '#30b30e'
}

// 给变量设定枚举类型
let color: ThemeColor = ThemeColor.Orange
console.log("color", color)

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