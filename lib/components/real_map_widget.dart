import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

/// Interactive OpenStreetMap tile map (flutter_map) that replaces the old
/// static map image. Free — no API key needed. Pans/zooms and shows an
/// optional center pin plus any extra [markers].
class RealMap extends StatelessWidget {
  const RealMap({
    super.key,
    this.center = const LatLng(13.7563, 100.5018), // Bangkok
    this.zoom = 13.0,
    this.showCenterPin = true,
    this.markers = const [],
    this.interactive = true,
  });

  final LatLng center;
  final double zoom;
  final bool showCenterPin;
  final List<Marker> markers;
  final bool interactive;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: center,
        initialZoom: zoom,
        interactionOptions: InteractionOptions(
          flags: interactive ? InteractiveFlag.all : InteractiveFlag.none,
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.atlas.homecare',
        ),
        MarkerLayer(
          markers: [
            if (showCenterPin)
              Marker(
                point: center,
                width: 44.0,
                height: 44.0,
                alignment: Alignment.topCenter,
                child: const _HomePin(),
              ),
            ...markers,
          ],
        ),
      ],
    );
  }
}

/// Red circular home pin used as the default map marker.
class _HomePin extends StatelessWidget {
  const _HomePin();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: const BoxDecoration(
        color: Color(0xFFE53935),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x40000000),
            offset: Offset(0.0, 2.0),
          )
        ],
        border: Border.fromBorderSide(
          BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
      child: const Icon(
        Icons.home_rounded,
        color: Colors.white,
        size: 20.0,
      ),
    );
  }
}
