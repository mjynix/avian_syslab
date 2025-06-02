df = pd.read_csv('2023.csv',index_col=0)
df['coordinates'] = df.apply(lambda x: Point(x['Longitude'],x['Latitude']),axis=1)
gdf = gpd.GeoDataFrame(df.index, geometry=list(df['coordinates']), crs='epsg:4326')
gdf = gdf.to_crs(epsg=3857)

xmin = -180
xmax = 180
ymin = -90
ymax = 90  # Adjust these as needed
fig, ax = plt.subplots()
ax.set_xlim(xmin, xmax)
ax.set_ylim(ymin, ymax)


ax = gdf.plot(ax=ax, cmap=plt.cm.Set1_r)
cx.add_basemap(ax,source=cx.providers.Esri.WorldImagery,crs=gdf.crs)
ax.set_aspect('equal')
plt.axis('off')
plt.savefig('2023map.pdf')
plt.close()
