@Component
struct MyPanel {
  // 成员变量
  title: string = '默认标题'
  extra: string = '查看更多 >'
  // 成员变量 - 函数 - 可以外部传入覆盖
  getMore = () => {
    AlertDialog.show({
      message: '查看更多'
    })
  }

  // 成员函数 - 不可以外部传入
  sayHi() {
    AlertDialog.show({
      message: '打招呼，你好'
    })
  }

  build() {
    Column({ space: 20 }) {
      Row() {
        Text(this.title)
          .fontSize(18)
        Text(this.extra)
          .fontSize(18)
          .onClick(() => {
            this.getMore()
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row({space: 20}) {
        Text('内容部分').fontSize(18)
        Button('按钮').onClick(() => {
            this.sayHi()
        })
      }
    }
    .width('100%')
    .height(200)
    .padding(10)
    .margin(20)
    .borderRadius(20)
    .backgroundColor('#fff')
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      MyPanel({
        title: '我的订单',
        extra: '全部订单 >',
        getMore() {
          AlertDialog.show({
            message: '点击了全部订单'
          })
        }
      })
      MyPanel({
        title: '小米有品众筹',
        extra: '7款众筹中 >',
        getMore() {
          AlertDialog.show({
            message: '点击了小米有品众筹'
          })
        }
      })
    }
    .height('100%')
    .width('100%')
    .padding(20)
    .backgroundColor(Color.Gray)
  }
}

