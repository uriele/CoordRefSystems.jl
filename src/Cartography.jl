# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENSE in the project root.
# ------------------------------------------------------------------

module Cartography

using Unitful
using Unitful: numtype
using Zygote: gradient

include("utils.jl")
include("ioutils.jl")
include("ellipsoids.jl")
include("datums.jl")
include("crs.jl")
include("codes.jl")

export
  # revolution ellipsoids
  RevolutionEllipsoid,
  majoraxis,
  minoraxis,
  eccentricity,
  eccentricity²,
  flattening,
  flattening⁻¹,

  # datums
  Datum,
  NoDatum,
  WGS84,
  WIII,
  ellipsoid,
  latitudeₒ,
  longitudeₒ,
  altitudeₒ,

  # coordinates
  CRS,
  Cartesian,
  Polar,
  Cylindrical,
  Spherical,
  GeodeticLatLon,
  GeocentricLatLon,
  AuthalicLatLon,
  LatLon,
  Mercator,
  WebMercator,
  PlateCarree,
  Lambert,
  Behrmann,
  GallPeters,
  WinkelTripel,
  Robinson,
  OrthoNorth,
  OrthoSouth,
  datum,

  # codes
  EPSG,
  ESRI

end
