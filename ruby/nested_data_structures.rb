concert = {
  "band_1" => {
    lead_singer: [
      'Gibson Les Paul',
      'Pedal Board',
      'Microphone'
      ],
    bassist: [
      'Fender Jazz',
      'Pedal Board',
      'Microphone'
    ],
    drummer: [
      'drum kit',
      'lots of drum sticks'
    ],
    lead_guitarist: [
      'Fender Telecaster',
      'Pedal Board',
      'Microphone'
    ]
  },
  "band_2" => {
    lead_singer: [
      'Gibson Hummingbird',
      'Harmonica',
      'Microphone'
    ],
    rhythm_guitarist: [
      'Gibson Hummingbird',
      'Microphone'
    ]
  },
  "band_3" => {
    lead_singer: [
      'Taylor Grand',
      'Microphone'
    ],
    harmony_1: [
      'Microphone',
      'Tamborine'
    ],
    harmony_2: [
      'Microphone',
      'Kick Drum',
    ]
  }
}

# p concert

p concert["band_2"][:rhythm_guitarist][0]
# should print Gibson Hummingbird

p concert["band_3"][:harmony_2][1]
# should print Kick Drum

p concert["band_1"]
# should print Band 1