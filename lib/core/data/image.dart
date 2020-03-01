import 'package:hpi_flutter/hpi_cloud_apis/hpi/cloud/common/v1test/image.pb.dart'
    as proto;
import 'package:meta/meta.dart';

@immutable
class Image {
  const Image({@required this.source, this.alt, this.aspectRatio})
      : assert(source != null);
  Image.fromProto(proto.Image image)
      : this(
          source: image.source,
          alt: image.alt,
          aspectRatio: image.aspectRatio,
        );

  final String source;
  final String alt;
  final double aspectRatio;

  proto.Image toProto() {
    final image = proto.Image()..source = source;
    if (alt != null) {
      image.alt = alt;
    }
    if (aspectRatio != null) {
      image.aspectRatio = aspectRatio;
    }
    return image;
  }
}
