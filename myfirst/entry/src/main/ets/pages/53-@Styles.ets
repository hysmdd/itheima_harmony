// 1. 全局定义
@Styles function commonStyles() {
  .width(100)
  .height(100)
}

@Entry
@Component
struct Index {
  @State message: string = '@styles'
  @State bgColor: ResourceColor = Color.Gray

  // 2. 组件内定义
  @Styles setBg() {
    .backgroundColor(this.bgColor)
  }

  build() {
    Column({space: 10}) {
      Text(this.message)
        .fontColor(Color.White)
        .commonStyles()
        .setBg()
        .onClick(() => {
          this.bgColor = Color.Orange
        })

      Column() {}
      .commonStyles()
      .setBg()
      .onClick(() => {
        this.bgColor = Color.Orange
      })

      Button('按钮')
        .commonStyles()
        .borderRadius(50)
        .setBg()
        .onClick(() => {
          this.bgColor = Color.Green
        })
    }
    .width('100%')
  }
}