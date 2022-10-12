class PathData {
  int? totalSlab;
  int? currentSlab;
  int? slabProgress;

  PathData({this.totalSlab, this.currentSlab, this.slabProgress});

  PathData.fromJson(Map<String, dynamic> json) {
    totalSlab = json['total_slab'];
    currentSlab = json['current_slab'];
    slabProgress = json['slab_progress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_slab'] = this.totalSlab;
    data['current_slab'] = this.currentSlab;
    data['slab_progress'] = this.slabProgress;
    return data;
  }
}
