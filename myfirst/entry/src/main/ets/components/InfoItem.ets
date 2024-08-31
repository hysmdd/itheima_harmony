import { CommentData } from '../model/CommentData'

@Component
export struct InfoItem {
  @Prop itemData: CommentData
  @Prop index: number
  onLikeClick = (index: number) => {
  }

  build() {
    Column() {
      Row() {
        Image(this.itemData.avatar)
          .width(30).aspectRatio(1)
          .margin({ top: 10 })
          .borderRadius(15)
        Text(this.itemData.name)
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Image(this.itemData.levelIcon)
          .width(20)
          .aspectRatio(1)
          .margin({ left: 8, top: 10 })
          .borderRadius(15)
      }

      // 评论内容
      Text(this.itemData.commentTxt)
        .fontSize(13)
        .fontColor(Color.Black)
        .margin({ left: 40, top: 0, bottom: 8 })

      // 评论日期和点赞互动
      Row() {
        Text(this.itemData.timeString)
          .fontSize(11)
          .fontColor(Color.Gray)
        Row({ space: 4 }) {
          Image(this.itemData.isLike ? $r('app.media.like_select') : $r('app.media.like_unselect'))
            .width(15).aspectRatio(1)
          Text(this.itemData.likeNum.toString())
            .fontSize(11)
            .fontColor(this.itemData.isLike ? Color.Blue : Color.Gray)
        }
        .onClick(() => {
          this.onLikeClick(this.index)
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding({ left: 15, right: 15 })
    .alignItems(HorizontalAlign.Start)
  }
}