import 'package:flutter/material.dart';
import 'QuoteCard.dart';
import 'quote.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  const QuoteList() : super();

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Rasul Kamolov', text: 'Love For All, Hatred For None. '),
    Quote(author: 'Russ', text: 'Don\'t watch the clock; do what it does'),
    Quote(author: 'Kam', text: 'If you can dream it, you can do it')
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList()
        ),
    );
  }
}

