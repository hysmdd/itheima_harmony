@Entry
@Component
struct Index {
  build() {
    Column() {
      Text()
        .width(300)
        .height(200)
        .backgroundColor('#600060')
        .backgroundImage('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')

          // 1. 直接写宽高尺寸
          // .backgroundImageSize({
          //   width: 150,
          //   height: 100
          // })

          // 2. 设置背景尺寸的枚举
          // Contain: 等比例缩放,显示整张图片,可能留白
          // Cover: 等比例缩放，让图片铺满整个容器，不会留白，但是有可能会有部分内容显示不出来
        .backgroundImageSize(ImageSize.Cover)
    }
    .padding(20)
  }
}