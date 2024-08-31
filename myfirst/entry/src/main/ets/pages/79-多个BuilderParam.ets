@Component
struct MyCard {
  @BuilderParam titleBuilder: () => void = this.titleDefaultBuilder
  @BuilderParam contentBuilder: () => void = this.contentDefaultBuilder

  @Builder
  titleDefaultBuilder() {
    Text('我是默认的大标题')
  }

  @Builder
  contentDefaultBuilder() {
    Text('我是默认的内容')
  }

  build() {
    // 卡片组件
    Column() {
      Row() {
        this.titleBuilder()
      }
      .height(30)
      .width('100%')
      .border({ color: '#ccc', width: { bottom: 1 } })
      .padding({ left: 10 })

      Row() {
        this.contentBuilder()
      }
      .width('100%')
      .padding(10)
    }
    .width('100%')
    .height(100)
    .borderRadius(10)
    .backgroundColor('#fff')
    .justifyContent(FlexAlign.Start)
  }
}

@Entry
@Component
struct Index {

  @Builder ftBuilder() {
    Text('我是传入的大标题')
  }

  @Builder fcBuilder() {
    Text('我是内容部分')
    Text('我是内容部分')
    Text('我是内容部分')
  }

  build() {
    Column({ space: 20 }) {
      MyCard()

      MyCard({
        titleBuilder: this.ftBuilder,
        contentBuilder: this.fcBuilder
      })
    }
    .height('100%')
    .width('100%')
    .padding(20)
    .backgroundColor(Color.Gray)
  }
}

