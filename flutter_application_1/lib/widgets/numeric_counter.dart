import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _volume = 0; 
 
  void _increase() {
    setState(() {
      if (_volume < 1000000) _volume++;
    });
  }

  void _decrease() {
    setState(() {
      if (_volume > 0) _volume--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _volume == 0 ? Icons.notifications_none : Icons.notification_add,
            size: 20 + _volume * 6.0, 
            color: Colors.black,
          ),
          const SizedBox(height: 16),
          Text(
            '$_volume',
            style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
          ),
          const Text('Subscrition T3T', style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _decrease, child: const Icon(Icons.remove)),
              const SizedBox(width: 24),
              ElevatedButton(onPressed: _increase, child: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}