@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('终会与你同行')
        .backgroundColor('#600060')
        .fontColor('#fff')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .padding({
          left: 20,
          top: 30,
          right: 10,
          bottom: 40
        })
    }
  }
}