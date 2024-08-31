import { InfoTop } from '../components/InfoTop'

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 头部
      InfoTop()
      // 内容
      List() {
        ForEach(Array.from({ length: 20 }), () => {
          ListItem() {
            Row() {

            }
            .width('100%')
            .height(100)
            .backgroundColor(Color.Red)
          }
          .padding(10)
        })
      }
      .layoutWeight(1)
      .width('100%')
      .backgroundColor(Color.Orange)
      .listDirection(Axis.Vertical) // 调整主轴方向
      .lanes(2, 5)  // 调整 列数 和 间距
      .alignListItem(ListItemAlign.Center)  // 列对齐方式
      .scrollBar(BarState.Auto) // Auto按需自动显示滚动条
      // .divider({
      //   strokeWidth: 3, // 线宽
      //   color: Color.Blue,  // 颜色
      //   startMargin: 10,  // 左边线距离边缘的距离
      //   endMargin: 10,  // 右边距离边缘的距离
      // })

      // 底部
      Row() {

      }
      .width('100%')
      .height(60)
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}