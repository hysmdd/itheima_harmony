// 需求：定义一个变量，存放【年终考试评价】
// 考试评价：可能是具体的分数，也可能是A、B、C、D等级
// let judge: number | string = 100
// judge = 'A+'
// judge = '优秀'
// judge = '不错，继续努力'
// console.log("年终考试评价", judge)

// 联合类型还可以将变量值约定在一组数据范围内进行选择
// 性别：男 女 保密
let gender: 'male' | 'female' | 'secret' = 'female'
console.log("性别", gender)

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