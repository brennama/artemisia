import 'package:flutter/material.dart';

import './models/category.dart';
import './models/art.dart';

 final artCategories = [
  Category(
    id: 'c1',
    title: 'Impressionist',
    color: Colors.purple,
    categoryImage: Image.asset('assets/images/monet.jpg'),
  ),

  Category(
    id: 'c2',
    title: 'Renaissance',
    color: Colors.red,
    categoryImage: Image.asset('assets/images/bosch_detail.jpg'),
  ),

  Category(
    id: 'c3',
    title: 'Dada',
    color: Colors.orange,
    categoryImage: Image.asset('assets/images/hoch.jpeg'),
  ),
  Category(
    id: 'c4',
    title: 'Pop Art',
    color: Colors.amber,
    categoryImage: Image.asset('assets/images/warhol.jpeg'),
  ),
  Category(
    id: 'c5',
    title: 'Tibetan Contemporary Art',
    color: Colors.blue,
    categoryImage: Image.asset('assets/images/gade_detail.jpeg'),
  ),
  Category(
    id: 'c6',
    title: 'Expressionist',
    color: Colors.green,
    categoryImage: Image.asset('assets/images/van_gogh_detail.jpeg'),
  ),
  Category(
    id: 'c7',
    title: 'Cubist',
    color: Colors.lightBlue,
    categoryImage: Image.asset('assets/images/picasso.jpg'),
  ),
  Category(
    id: 'c8',
    title: 'Traditional Chinese Art',
    color: Colors.lightGreen,
    categoryImage: Image.asset('assets/images/tang.jpeg'),
  ),
  Category(
    id: 'c9',
    title: 'Pre-Columbian Aztec',
    color: Colors.pink,
    categoryImage: Image.asset('assets/images/codex_mendoza.jpeg'),
  ),
  Category(
    id: 'c10',
    title: 'Op Art',
    color: Colors.teal,
    categoryImage: Image.asset('assets/images/riley.jpeg'),
  ),
];

const artworks = [
  Artwork(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Water Lilies',
    region: Region.europe,
    media: Media.painting,
    imageUrl:
        'https://www.artic.edu/iiif/2/3c27b499-af56-f0d5-93b5-a7f2f1ad5813/full/843,/0/default.jpg',
    year: 20,
    details: [
      'Artist: Claude Monet',
      'Date: 1906',
      'Origin: France',
      'Medium: Oil on canvas',
      'Dimensions: 89.9 × 94.1 cm (35 3/8 × 37 1/16 in.)',
    ],
    summary: [
      'Water Lilies (or Nymphéas, French: [nɛ̃.fe.a]) is a series of approximately 250 oil paintings by French Impressionist Claude Monet (1840–1926). '
          'The paintings depict his flower garden at his home in Giverny, and were the main focus of his artistic production during the last thirty years of his life. '
          'Many of the works were painted while Monet suffered from cataracts.'
    ],
    isFemaleArtist: false,
    isModernArt: true,
    isPainting: true,
    isAsianArt: false,
  ),
  Artwork(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'The Garden of Earthly Delights',
    region: Region.europe,
    media: Media.painting,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/The_Garden_of_earthly_delights.jpg/1280px-The_Garden_of_earthly_delights.jpg',
    year: 16,
    details: [
      'Artist: Hieronymus Bosch',
      'Date: Between 1490 and 1510',
      'Origin: The Netherlands',
      'Medium: Oil on oak panels',
      'Dimensions: 205.5 cm × 384.9 cm (81 in × 152 in)',
    ],
    summary: [
  'The Garden of Earthly Delights is the modern title given to a triptych painted by the Early Netherlandish master Hieronymus Bosch when he was between 40 and 60 years old. '
      'It has been housed in the Museo del Prado in Madrid, Spain since 1939.'
  'As little is known of Bosch\'s life or intentions, interpretations of his artistic intent behind the work range from an admonition of worldly fleshy indulgence, to a dire warning on the perils of life\'s temptations, to an evocation of ultimate sexual joy. '
      'The intricacy of its symbolism, particularly that of the central panel, has led to a wide range of scholarly interpretations over the centuries. '
      'Twentieth-century art historians are divided as to whether the triptych\'s central panel is a moral warning or a panorama of paradise lost.'
    ],
    isFemaleArtist: false,
    isModernArt: false,
    isPainting: true,
    isAsianArt: false,
  ),
  Artwork(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Fountain',
    region: Region.europe,
    media: Media.sculpture,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Marcel_Duchamp%2C_1917%2C_Fountain%2C_photograph_by_Alfred_Stieglitz.jpg/800px-Marcel_Duchamp%2C_1917%2C_Fountain%2C_photograph_by_Alfred_Stieglitz.jpg',
    year: 20,
    details: [
      'Artist: Marcel Duchamp',
      'Date: 1917',
      'Origin: France',
      'Medium: Porcelain Urinal',
      'Dimensions: 61 cm × 35.6 x 48.3 cm (24″ x 14″ x 19″)',
    ],
    summary: [
      'Fountain is a readymade sculpture consisting of a porcelain urinal signed "R. Mutt". '
  'In April 1917, an ordinary piece of plumbing chosen by Duchamp was submitted for an exhibition of the Society of Independent Artists, the inaugural exhibition by the Society to be staged at The Grand Central Palace in New York. '
  'When explaining the purpose of his readymade sculpture, Duchamp stated they are "everyday objects raised to the dignity of a work of art by the artist\'s act of choice." '
    'In Duchamp\'s presentation, the urinal\'s orientation was altered from its usual positioning.'
    'Fountain was not rejected by the committee, since Society rules stated that all works would be accepted from artists who paid the fee, but the work was never placed in the show area.'
    ' Following that removal, Fountain was photographed at Alfred Stieglitz\'s studio, and the photo published in the Dada journal The Blind Man. '
    'The original has been lost.'
  'The work is regarded by art historians and theorists of the avant-garde as a major landmark in 20th-century art. '
  'Sixteen replicas were commissioned from Duchamp in the 1950s and 1960s and made to his approval.'
  ' Some have suggested that the original work was by the female artist Elsa von Freytag-Loringhoven who had submitted it to Duchamp as a friend, but art historians maintain that Duchamp was solely responsible for Fountain\'s presentation.'

    ],
    isFemaleArtist: false,
    isModernArt: false,
    isPainting: false,
    isAsianArt: true,
  ),
  Artwork(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Campbell\s Soup Cans',
    region: Region.americas,
    media: Media.print,
    imageUrl:
        'https://s3-us-west-2.amazonaws.com/collections.lacma.org-images/remote_images/ma-19261-WEB.jpg?xI8ACV6_nrokXFlyvB0ajimb1rniDDvj',
    year: 60,
    details: [
      'Artist: Andy Warhol',
      'Date: 1962',
      'Origin: The United States',
      'Medium: Synthetic polymer paint on canvas',
      'Dimensions: 50.8 x 40.6 cm (20 x 16")',
    ],
    summary: [
  'Campbell\'s Soup Cans is a work of art by American artist Andy Warhol.'
  'It consists of thirty-two canvases, each containing of a painting of a Campbell\'s Soup can —one of each of the canned soup varieties the company offered at the time. '
  'The non-painterly works were produced by a screen printing process and depict imagery deriving from popular culture and belong to the pop art movement.'
  'Warhol was a commercial illustrator before embarking on painting. Campbell\'s Soup Cans was shown on July 9, 1962, in Warhol\'s first one-man gallery exhibition in the Ferus Gallery of Los Angeles, California curated by Irving Blum.'
  'The exhibition marked the West Coast debut of pop art.'
  'The subject matter initially caused offense, in part for its affront to the technique and philosophy of the earlier art movement of abstract expressionism. '
  'Warhol\'s motives as an artist were questioned.'
  'Warhol\'s association with the subject led to his name becoming synonymous with the Campbell\'s Soup Can paintings.'
    ],
    isFemaleArtist: false,
    isModernArt: true,
    isPainting: false,
    isAsianArt: false,
  ),

];
