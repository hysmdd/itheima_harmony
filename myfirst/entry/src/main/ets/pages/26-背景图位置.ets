@Entry
@Component
struct Index {
  build() {
   Column() {
      Text()
        .fontColor(Color.White)
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
        // .backgroundImagePosition({x: 10, y: 50})
        .backgroundImagePosition(Alignment.Center)
   }
   .padding(20)
  }
}