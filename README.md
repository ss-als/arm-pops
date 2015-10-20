# arm-pops
<p>Simple CoffeeScript popup plugin.</p>

<h2>Example with options</h2>

<div class="highlight highlight-source-js">
	<pre>$.armPops { dark: false }</pre>
</div>

<h2>Options</h2>
<table>
	<thead>
		<tr>
			<th>option</th>
			<th>type</th>
			<th>default</th>
			<th>notes</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><code>dark</code></td>
			<td>boolean</td>
			<td><code>true</code></td>
			<td>dark background</td>
		</tr>
		<tr>
			<td><code>pointer</code></td>
			<td>boolean</td>
			<td><code>false</code></td>
			<td></td>
		</tr>
		<tr>
			<td><code>pointerHeight</code></td>
			<td>integer</td>
			<td><code>null</code></td>
			<td></td>
		</tr>
		<tr> 
			<td><code>depending</code></td>
			<td>boolean</td>
			<td><code>false</code></td>
			<td>depending for different content</td>
		</tr>
		<tr>
			<td><code>position</code></td>
			<td>string</td>
			<td><code>'smart'</code></td>
			<td>popup position (<code>'top'</code>, <code>'bottom'</code> or <code>'smart'</code>)</td>
		</tr>
		<tr> 
			<td><code>pseudo</code></td>
			<td>object</td>
			<td></td>
			<td>pseudo link</td>
		</tr>
		<tr>
			<td><code>ajax</code></td>
			<td>boolean</td>
			<td><code>false</code></td>
			<td>ajax mode</td>
		</tr>
		<tr>
			<td><code>layout</code></td>
			<td>object</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><code>contentContainer</code></td>
			<td>object</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><code>content</code></td>
			<td>object</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><code>outsideClick</code></td>
			<td>boolean</td>
			<td><code>true</code></td>
			<td>click outside popup</td>
		</tr>
	</tbody>
</table>