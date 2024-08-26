@Entry
@Component
struct Index {
  build() {
    Column() {
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .margin({top: 5, bottom: 5})
        .border({ width: 2 })
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .alignItems(HorizontalAlign.End)
    .justifyContent(FlexAlign.Center)
  }
}