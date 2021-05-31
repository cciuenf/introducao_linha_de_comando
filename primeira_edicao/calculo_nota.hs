import System.IO (hFlush, stdout)
import Text.Printf (printf)

-- #### RESUMO ####

resumo :: String
resumo = unlines
  [ "Trabalho           Qtd    Nota max    Peso"
  , "--------           ---    --------    ----"
  , "Atividades (atv)    2         5       1.0 (p1)"
  , "ICs (ics)           2        10       4.0 (p2)"
  , "Avaliação (av)      1        10       5.0 (p3)\n"
  , "      nota = (p1 * atv) + (p2 * ics) + (p3 * av)"
  , "             ―――――――――――――――――――――――――――――――――――"
  , "                        (p1 + p2 + p3)\n"
  , "      Aprovação == nota >= 6.0\n\n"
  ]

-- #### FORMATAÇÃO ####

data Cor
  = Verde
  | Vermelho
  | Amarelo

-- | Comando ANSI Select Graphic Rendition
-- fonte: https://w.wiki/3PvB
data SGR
  = Reseta
  | AplicaCor Cor

-- | Possíveis mensagens
type MsgErro = String
type MsgSucesso = String
type MsgAviso = String

codCor :: Cor -> Int
codCor Vermelho = 1
codCor Verde    = 2
codCor Amarelo  = 3

codSgr :: SGR -> Int
codSgr Reseta          = 0
codSgr (AplicaCor cor) = codCor cor

foreground :: String
foreground = "38;5;"

-- | Referência `CSI`: https://w.wiki/3PvE
csi :: Int -> String -> String
csi cod@0 final = "\ESC[" ++ show cod ++ final
csi cod final = "\ESC[" ++ foreground ++ show cod ++ final

formata :: SGR -> String
formata sgr = csi (codSgr sgr) "m"

vermelho :: String -> MsgErro
vermelho s = (formata $ AplicaCor Vermelho) ++ s ++ (formata Reseta)

verde :: String -> MsgSucesso
verde s = (formata $ AplicaCor Verde) ++ s ++ (formata Reseta)

amarelo :: String -> MsgAviso
amarelo s = (formata $ AplicaCor Amarelo) ++ s ++ (formata Reseta)

-- #### PESOS ####

pesoIC :: Float
pesoIC = 2

pesoAtividade :: Float
pesoAtividade = 1

pesoAvaliacao :: Float
pesoAvaliacao = 5

-- #### CALCULO ####

type Prompt = String
type Atividades = Float
type ICs = (Float, Float)
type Avaliacao = Float
type Media = Float

calcula :: Atividades -> ICs -> Avaliacao -> Media
calcula atvs (ic1, ic2) av = (calcAtvs + calcIC + calcAv) / pesos
  where calcAtvs = pesoAtividade * atvs
        calcIC   = (pesoIC * ic1) + (pesoIC * ic2)
        calcAv   = pesoAvaliacao * av
        pesos    = pesoAtividade + (2 * pesoIC) + pesoAvaliacao

main :: IO ()
main = do
  putStrLn resumo
  atividades <- pegaAtividades
  ics <- pegaICs
  avaliacao <- pegaAvaliacao
  let media = calcula atividades ics avaliacao
  if media < 6.0
     then printf $ vermelho "\n\nReprovado: " ++ show media ++ "\n"
     else printf $ verde "\n\nAprovado: " ++ show media ++ "\n"

-- #### FUNÇÕES AJUDA ####

pergunta :: String -> IO String
pergunta prompt = do
  printf $ amarelo prompt
  hFlush stdout
  getLine

ate :: String -> (Float -> (Either String Float)) -> IO Float
ate prompt testa = go
  where
    go = do
      resposta <- pergunta prompt 
      case testa (read resposta :: Float) of
        Left msg        -> printf (msg ++ "\n") >> go
        Right resultado -> pure resultado

pegaAtividades :: IO Atividades
pegaAtividades = do
  atv1 <- "nota atividade 1> " `ate` serAtividade
  atv2 <- "nota atividade 2> " `ate` serAtividade
  return $ atv1 + atv2

pegaICs :: IO ICs
pegaICs = do
  ic1 <- "\nnota IC 1> " `ate` serIC
  ic2 <- "nota IC 2> " `ate` serIC
  return (ic1, ic2)

pegaAvaliacao :: IO Avaliacao
pegaAvaliacao = "\nnota avaliação> " `ate` serAvaliacao

-- #### VALIDAÇÕES ####

serAtividade :: Float -> Either String Float
serAtividade atv 
  | atv <<>> (0.0, 5.0) = Right atv
  | otherwise           = Left (vermelho "Nota atividade inválida!\n")

serIC :: Float -> Either String Float
serIC ic
  | ic <<>> (0.0, 10.0) = Right ic
  | otherwise           = Left (vermelho "Nota IC inválida!\n")

serAvaliacao :: Float -> Either String Float
serAvaliacao n 
  | n <<>> (0.0, 10.0) = Right n
  | otherwise          = Left (vermelho "Nota avaliação inválida!\n")

-- | Operador `in` para Floats
(<<>>) :: Float -> (Float, Float) -> Bool
(<<>>) x (i, f) = x >= i && x <= f
