class Music {
  final String url;
  final String description;
  final String category;

  Music({required this.url, required this.description, required this.category});
}

List<Music> musics = [
  Music(
      url: guitarCampUrl, description: 'Guitar Camp', category: 'Instrumental'),
  Music(url: chillHopUrl, description: 'Chill-hop', category: 'Instrumental'),
  Music(url: summerNight, description: 'Summer Night', category: 'Ambient'),
  Music(url: awakeningUrl, description: 'Awakening', category: 'Ambient'),
  Music(url: natureUrl, description: 'Sounds of nature', category: 'Ambiental'),
  Music(url: birdsUrl, description: 'Singers birds', category: 'Ambiental'),
  Music(url: maesterUrl, description: 'The maester', category: 'Classics'),
  Music(url: mozartUrl, description: 'Mozart', category: 'Classics'),
];

const guitarCampUrl =
    'https://as1.ftcdn.net/v2/jpg/03/29/72/06/1000_F_329720612_tmvNf94K1FMCJym0gAshM9SwwBLE6Jsq.jpg';
const chillHopUrl =
    'https://steamuserimages-a.akamaihd.net/ugc/1654474082525863763/99F8321CA30A4B306D09A946F16DAA425AD9888B/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true';
const summerNight =
    'https://img.freepik.com/vetores-premium/acampamento-de-verao-no-turismo-ao-ar-livre-da-floresta-perto-da-ilustracao-vetorial-de-fogo-homem-mulher-personagem-com-guitarra-de-desenho-animado-perto-da-tenda_169479-2721.jpg?w=1380';
const awakeningUrl =
    'https://img.freepik.com/premium-vector/man-sleeping-bed-waking-up-with-sun-good-mood-resting-bedroom-morning-awakening-illustration-cartoon-style_277904-4316.jpg';
const natureUrl =
    'https://img.freepik.com/free-photo/path-forest-among-trees-generative-ai_169016-29519.jpg?size=626&ext=jpg&ga=GA1.1.2110692117.1694209799&semt=ais';
const birdsUrl =
    'https://img.freepik.com/free-vector/cute-bird-sitting-wooden-perch-birdhouse_107791-9551.jpg?size=626&ext=jpg&ga=GA1.2.2110692117.1694209799&semt=ais';
const mozartUrl =
    'https://i.etsystatic.com/41094582/r/il/6ade71/4691434353/il_fullxfull.4691434353_ai7f.jpg';
const maesterUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjDZLEoFsDgRg7vtccnuySi8dL4QJyuldWMw&usqp=CAU';
