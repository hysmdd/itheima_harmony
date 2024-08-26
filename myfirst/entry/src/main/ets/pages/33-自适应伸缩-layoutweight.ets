@Entry
@Component
struct Index {
  build() {
    Column() {
      // layoutWeight 自适应伸缩
      Row() {
        Text('左侧')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Pink)
        Text('右侧固定')
          .width(80)
          .backgroundColor(Color.Orange)
          .height(40)
      }
      .width(300)
      .height(40)
      .borderRadius(6)
      .backgroundColor('#fff')

      Row() {
        Text('邓恩熙')
          .height(40)
          .backgroundColor(Color.Green)
          .layoutWeight(3)
        Text('章若楠')
          .height(40)
          .backgroundColor(Color.Pink)
          .layoutWeight(2)
        Text('张婧仪')
          .height(40)
          .backgroundColor(Color.Orange)
          .layoutWeight(1)
        Text('宋祖儿')
          .height(40)
          .backgroundColor(Color.Yellow)
          .width(70)
      }
      .width(300)
      .height(40)
      .borderRadius(6)
      .backgroundColor('#fff')
      .margin({
        top: 30
      })
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#ccc')
  }
}