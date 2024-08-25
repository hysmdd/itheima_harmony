@Entry
@Component
struct Index {
  build() {
    Column() {
      // svg特点：
      // 1. 任意放大缩小不失真
      // 2. 可以修改颜色
      Image($r('app.media.ic_files_new_folder'))
        .width(200)
        .fillColor('#f00')
    }
  }
}