import createCache, { EmotionCache } from '@emotion/cache'

export default function createEmotionCache(): EmotionCache {
  // キャッシュ関連の共通処理を記載するファイルです。ひとまず「MUIとemotionをNext.jsで動作させるための設定ファイルのひとつ」くらいの理解度で問題ありません。
  return createCache({ key: 'css' })
}
