@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('白敬亭')
        .width(80)
        .height(80)
        .backgroundColor(Color.Green)
      Text('邓恩熙 - 定位')
        .width(80)
        .height(80)
        .backgroundColor(Color.Yellow)
        .position({
          x: 50,
          y: 50,
        })
        .zIndex(1)
      Text('杨洋')
        .width(80)
        .height(80)
        .backgroundColor(Color.Orange)
        .zIndex(2)
    }
    .width(300)
    .height(300)
    .backgroundColor(Color.Pink)
  }
}