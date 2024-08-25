@Entry
@Component
struct Index {
  build() {
   Column() {
      Text('我是内容文本')
        .fontColor(Color.White)
        .width(300)
        .height(100)
        .backgroundColor(Color.Pink)
        .backgroundImage('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg', ImageRepeat.XY)
        .backgroundImageSize(0)
        .backgroundImagePosition(Alignment.Center)
   }
   .padding(20)
  }
}