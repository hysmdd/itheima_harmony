@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    // 1. 演示文字颜色
    // Column() {
    //   Text('邓恩熙')
    //     .fontSize(30)
    //     .fontColor('#ff6700')
    //     // .fontColor(Color.Orange)
    // }

    // 2. 综合联系：今日头条置顶新闻
    Column() {
      Row() {
        Text('学鸿蒙，就来黑马程序员')
          .width('100%')
          .fontSize(24)
          .height(40)
      }
      Row() {
        Text('置顶')
          .fontColor('#df3c50')
          .width(40)
        Text('新华社')
          .fontColor('#a1a1a1')
          .width(60)
        Text('1314评论')
          .fontColor('#a1a1a1')
      }
      .width('100%')
    }
    .width('100%')
  }
}