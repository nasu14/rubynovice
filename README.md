# Rubynovice

Ruby programming mastering platform using Github.

情報共有環境であるGithubを使って，Rubyのprogrammingを習得することを目指しています．

## インストール法
- githubで自分のアカウントにdaddygongon/rubynoviceをforkする
- 自分のPCにcloneする

## 使用法
- 自分のすきな名前(hogehoge)をつけたディレクトリーを作り"./lib/hogehoge/daddy.rb"を準備．
- class Rubynoviceに解答を保存していく．
- 書き方は./lib/daddy/ex1.rbを参照のこと．
- specで，個人ごとの検査を実行するには
  - setenv RUBYNOVICE_NAME hogehogeとする．
  - rake spec hogehogeとかでもOK．

```ruby
cat ./lib/hogehoge/daddy.rb
#require "ex1_1"
require "ex1"
require "ex2_2"
```

```ruby
bob% cat ./lib/hogehoge/ex1.rb
class Rubynovice
  def ex1_1
    puts "Hello world!"
    p "hello world.\n"
  end
  def ex1_2
    a=1+1
    print a.to_s+"\n"
    puts a
    p a
  end
  def ex1_3
    a=1+1
    printf("ans=%i\n",a)
    text = "ans=#{a}\n"
  end
end
```

## 課題

### 入門課題
1. [ex1(gets puts)](file.ex1.html)
1. [ex2(loop)](file.ex2.html)
1. [ex3(array)](file.ex3.html)
1. [ex4(if)](file.ex4.html)
1. [ex5(method)](file.ex5.html)

### 発展課題
1. [ex_d_1(prime_numbers)](file.ex_prime.html)
1. [ex_d_2(GoogleRecruit)](file.ex_GoogleRecruit.html)
