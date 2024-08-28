// 定义一个数组
let names: string[] = ['白敬亭', '杨洋', '邓恩熙', '章若楠']
console.log("整个数组", names)

// 数组取值（通过下标）
console.log("数组取值", names[2])

// 数组修改（通过下标）
names[3] = '赵今麦'
console.log("修改数组", names)

// 增加数组元素
let songs: string[] = ['最好的安排', '愿你余生漫长', '谁']
// 往开头新增 unshift
songs.unshift('与我无关')
console.log("返回数组长度", songs.unshift('11'))
console.log("数组songs", songs)

// 往结尾新增 push
songs.push('最后一页', '把回忆拼好给你')
console.log("数组songs", songs)

// 开头删除
console.log("数组songs", songs.shift() + ' 被删除')
console.log("数组songs", songs)

// 从结尾删除
console.log("数组songs", songs.pop() + '被删除')
console.log("数组songs", songs)

// 删除任意位置 splice
songs.splice(3, 1)
console.log("数组songs", songs)

// 任意位置新增
songs.splice(1, 0, '把回忆拼好给你')
console.log("数组songs", songs)

@Entry
@Component
struct Index {
  build() {

  }
}