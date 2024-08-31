@Component
struct MyComponent {
  @State count: number = 1
  build() {
    Row({space: 20}) {
      Text(this.count.toString())
        .fontColor('#fff')
      Button('按钮')
        .onClick(() => {
          this.count++
        })
    }
  }
}

@Component
struct MyHeader {
  build() {
    Row() {
      Text('我是头部')
        .fontColor(Color.White)
    }
    .justifyContent(FlexAlign.Center)
    .height(50)
    .width('100%')
    .backgroundColor(Color.Brown)
  }
}

@Component
struct MyMain {
  build() {
    Column({space: 20}) {
      MyComponent()
      MyComponent()
      MyComponent()
    }
    .layoutWeight(1)
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.Green)
  }
}

@Component
struct MyFooter {
  build() {
    Row() {
      Text('我是底部')
        .fontColor('#fff')
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.Orange)
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      MyHeader()
      MyMain()
      MyFooter()
    }
    .height('100%')
  }
}