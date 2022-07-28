class GreetingsController < ApplicationController
    #クラス変数を初期化
    @@default = "あいさつします"

  def hello
    num = 6
    greeting = "いらっしゃいませ"
    # 条件分岐
    if num == 1 then
      @message = "こんにちは、ご機嫌いかがですか"
    elsif num > 5 then
      # インスタンス変数にローカル変数を代入
      @message = greeting
    else
      # インスタンス変数にクラス変数を代入
      # どうして代入できるんだろう？
      @message = @@default
    end
  end

  def goodbye
    # メソッドを呼び出してインスタンス変数messageに代入
    @message = add_postfix("さようなら")
  end

  def add_postfix(originalMessage)
    # 引数を受け取り文字列を追加
    return originalMessage + "ざます"
  end

  def test_array
    # 連想配列を作成
    @food_array = {"りんご" => "100円", "みかん" => "150円", "バナナ" => "300円"}
    # 食べ物配列からキーをもとに値を取得
    apple_price = @food_array["りんご"]
    # 食べ物配列に要素を追加（値を更新するときも同じ書き方）
    @food_array["シャインマスカット"] = "4000円"
    # 食べ物配列からみかんを削除
    @food_array.delete("みかん")

    #
  end
end
