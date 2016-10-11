# 第一回レポート課題(10/5出題，10/11解答)
## 課題2
### 課題内容
仮想スイッチを停止したら、コントローラで次のメッセージを表示するようにしてみよう:

```
Bye 0xabc
```

### 解答
ヒントに書かれていたリンク先のページを参考に，スイッチが切断した際に
呼び出される，switch_disconnectedハンドラに関する記述を追加した．
具体的には，hello_trema.rbのHelloTremaクラス内に以下の内容を追加した．

```
def switch_disconnected(dpid)
    logger.info "Bye #{dpid.to_hex}"
end
```

## 課題3
### 課題内容
HelloTrema が起動したら次のメッセージを表示するようにしてみよう:

```
HelloTrema started.
```

ただし、次の回答ではダメ (なぜダメか？も考察しよう)

```ruby
class HelloTrema < Trema::Controller
  def start(_args)
    logger.info 'HelloTrema started.'
  end
  ...
```