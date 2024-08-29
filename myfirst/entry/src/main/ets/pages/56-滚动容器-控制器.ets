

@Entry
@Component
struct Index {
  // 1. 创建Scroller对象（实例化）
  myScroll: Scroller = new Scroller()

  build() {
    Column() {
      Scroll(this.myScroll) {
        Column({ space: 10 }) {
          ForEach(Array.from({length: 10}), (item:string, index) => {
            Text(`测试文本 ${index + 1}`)
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Orange)
              .fontSize(20)
              .fontColor(Color.White)
              .borderRadius(10)
          })
        }
        .padding(10)
        .width('100%')
      }
      .width('100%')
      .height(400)
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Off)  // On一直显示  Off一直隐藏  Auto滑动显示
      // .scrollBarColor(Color.Blue) // 滚动条颜色
      // .scrollBarWidth(5)  // 滚动条高度
      .edgeEffect(EdgeEffect.Spring)

      Button('控制滚动条位置').margin(20)
        .onClick(() => {
          this.myScroll.scrollEdge(Edge.Start)
        })
      Button('获取已经滚动的距离')
        .onClick(() => {
          const y = this.myScroll.currentOffset().yOffset
          AlertDialog.show({
            message: `y: ${y}`
          })
        })
    }

  }
}