@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('没有圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Pink)
        .margin({
          bottom: 40
        })
      Text('添加圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Orange)
        // .borderRadius(15)
        // .borderRadius({
        //   topLeft: 10,
        //   topRight: 20,
        //   bottomRight: 30,
        //   bottomLeft: 40
        // })
        .borderRadius({
          topLeft: 20,
          bottomRight: 20
        })
    }
    .padding(20)
  }
}