import { InfoTop } from '../components/InfoTop'
import { InfoItem } from '../components/InfoItem'
import { InfoFooter } from '../components/InfoFooter'
import font from '@ohos.font'
import { CommentData, createListRange } from '../model/CommentData'
import { JSON } from '@kit.ArkTS'

@Entry
@Component
struct Index {

  @State commentList: CommentData[] = createListRange()

  // 一加载Index入口页面，就进行注册
  aboutToAppear(): void {
    // 注册字体
    font.registerFont({
      familyName: 'myfont',
      familySrc: '/fonts/iconfont.ttf'
    })
    this.onSort(0)
  }

  handleLike = (index: number) => {
    if (this.commentList[index].isLike) {
      this.commentList[index].likeNum--
    } else {
      this.commentList[index].likeNum++
    }
    this.commentList[index].isLike = !this.commentList[index].isLike
  }

  onSubmitComment(commentText: string) {
    const newItem: CommentData = new CommentData('https://q2.qlogo.cn/headimg_dl?dst_uin=776063641@qq.com&spec=640', '终会与你同行', new Date().getTime(), 6, 1314, commentText, true)
    this.commentList = [newItem, ...this.commentList]
  }

  onSort(type: number) {
    if (type === 0) {
      this.commentList.sort((a, b) => {
        return b.time - a.time
      })
    } else if(type === 1) {
      this.commentList.sort((a, b) => b.likeNum - a.likeNum)
    }
  }

  build() {
    Column() {
      // 头部
      InfoTop({
        onSort: (type: number) => {
          this.onSort(type)
        }
      })
      // 内容
      List() {
        ForEach(this.commentList, (item: CommentData, index: number) => {
          ListItem() {
            // 列表项组件
            InfoItem({
              itemData: item,
              index: index,
              onLikeClick: (index: number) => {
                this.handleLike(index)
              }
            })
          }
        })
      }
      .layoutWeight(1)
      .padding({ bottom: 10 })

      // 底部
      InfoFooter({
        onSubmitComment: (commentText: string) => {
          this.onSubmitComment(commentText)
        }
      })
    }
    .width('100%')
    .height('100%')
  }
}