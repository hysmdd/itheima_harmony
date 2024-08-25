@Entry
@Component
struct Index {
  build() {
    Column({space: 20}) {
      // 1. 正圆（头像）
      Image('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
        .width(100)
        .height(100)
        .borderRadius(50)

      // 2. 胶囊按钮
      Text('今天还没打卡哟~')
        .width(220)
        .textAlign(TextAlign.Center)
        .height(50)
        .backgroundColor('#e3e4e5')
        .borderRadius(25)
    }
    .width('100%')
    .padding(20)
  }
}