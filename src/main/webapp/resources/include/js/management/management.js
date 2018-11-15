// 예약자 리스트 
$(document).ready(function(){
    $('#empList').DataTable({
        pageLength: 10,
        bPaginate: true, /* 페이징 처리 할것인가 */
        bLengthChange: true, /* true 하면 리스트 박스 추가 */
        lengthMenu : [ [ 5, 10, 30, -1 ], [ 5, 10, 30, "All" ] ],
        bAutoWidth: true,
        processing: true, /* 값을 가져올때 로딩 processing ui보여줌 */
        ordering: true, /* 항목 정렬 사용 */
        serverSide: false,
        searching: true
    });   

    $('#btnDelete').click(function(){
    	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    		var length =  $('input[name="reserveNo"]:checked').length;
    		if( length == 0){
    			alert("삭제할 데이터가 없습니다.")
    			return;
    		}    		
    		alert(length + "건이 삭제되었습니다.");
    		$('form').submit();  
    	}
     });
    
 });    

    

/*function callbackDelete(datas){
	
	$.each(data, function(idx, m){
				
	})
}
*/
      
      
      
       //* 체크박스 선택뒤 취소버튼 예약 삭제 이벤트 ... 연구중..
      
 /*      $('body').off().on('click', '#btnDelete', function() {
      	var memberNo = $(this).closest('tr').find($('input[type=checkbox]')).val();
      	
      	console.log(memberNo);
      	var confirmMember = confirm(reserveNo + ' 사용자를 정말 삭제하겠습니까?');
      	
      	if(confirmMember) {
      		$.ajax({
      			url: './deleteReserve.do',
      			data: $("form").serialize(), 
      			type: 'POST',
      			contentType: 'application/json; charset=utf-8',
      			dataType: 'json',
      			error: function(xhr, status, msg) {
      				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
      			},
      			success: function(xhr) {
      				console.log(xhr.result);
      				alert(memberNo + ' 회원이 삭제되었습니다.');
      				go_page(1);
      			}
      		})
      	}
      }) */

const opts = {
		  fill: false,
		  stroke: true,
		  inward: false,
		  polygon: {
		    amount: 20,
		    lineWidth: 1,
		    point: {
		      amount: 7,
		      radius: 0
		    },
		    rotationSpeed: {
		      start: 0.3,
		      delta: 0.01
		    },
		    radius: {
		      start: 50,
		      delta: 15
		    },
		    angle: {
		      start: 10,
		      delta: 10
		    }
		  },
		  pointer: {
		    size: 15
		  }
		}

		let w = window.innerWidth
		let h = window.innerHeight
		let mouseActual = {
		  x: w / 2,
		  y: h / 2
		}
		let mouse = [{
		  x: w / 2,
		  y: h / 2
		}]

		let ogW = w
		let ogH = h
		let updateRequest

		// CLASSES
		// SvgPolygon wraps the verbose code required to create and manipulate the SVG elements
		class SvgPolygon {
		  // root is required to create SVGTransforms and SVGPoints
		  constructor (root, coors = []) {
		    this.root = root
		    this.node = document.createElementNS('http://www.w3.org/2000/svg', 'polygon')
		    this.points = this.node.points

		    if (coors.length > 0) {
		      let points = this.createPoints(coors)
		      this.initialize(points[0])
		      for (let i = 1; i < points.length; i++) {
		        this.appendPoint(points[i])
		      }
		    }

		    this.transform = []
		    this.transform[0] = this.root.createSVGTransform()
		    this.transform[1] = this.root.createSVGTransform()
		    this.node.transform.baseVal.appendItem(this.transform[0])
		    this.node.transform.baseVal.appendItem(this.transform[1])
		  }

		  createPoint (coor) {
		    let point = this.root.createSVGPoint()
		    point.x = coor.x
		    point.y = coor.y
		    return point
		  }

		  createPoints (coors) {
		    let points = []
		    for (let c of coors) {
		      points.push(this.createPoint(c))
		    }
		    return points
		  }

		  initialize (point = createPoint({x: 0, y: 0})) {
		    this.points.initialize(point)
		  }

		  appendPoint (point) {
		    this.points.appendItem(point)
		  }

		  getPoint (i) {
		    return this.points.getItem(i)
		  }

		  setAttribute (attr, val) {
		    this.node.setAttribute(attr, val)
		  }

		  setRotate (angle, x, y) {
		    this.transform[0].setRotate(angle, x, y)
		  }

		  setTranslate (x, y) {
		    this.transform[1].setTranslate(x, y)
		  }
		}

		// Polygon wraps an SvgPolygon with the function and values to animate it
		class Polygon {
		  constructor (root, numPoints, angleStart, rotSpeed, radius, color) {
		    this.x = w / 2
		    this.y = h / 2

		    this.root = root
		    this.numPoints = numPoints
		    this.angle = angleStart
		    this.rotSpeed = rotSpeed
		    this.radius = radius
		    this.color = color

		    this.angleDiff = Math.PI * 2 / this.numPoints

		    let coors = []
		    for (let i = 0; i < this.numPoints; i++) {
		      coors.push({
		        x: this.x + Math.cos(this.angleDiff * i + Math.radians(this.angle)) * this.radius,
		        y: this.y + Math.sin(this.angleDiff * i + Math.radians(this.angle)) * this.radius
		      })
		    }

		    this.svgPolygon = new SvgPolygon(root, coors)
		    
		    if (opts.fill) {
		      this.svgPolygon.setAttribute('fill', this.color)
		    } else {
		      this.svgPolygon.setAttribute('fill', 'transparent')
		    }
		    
		    if (opts.stroke) {
		      this.svgPolygon.setAttribute('stroke', this.color)
		    }
		    
		    this.svgPolygon.setAttribute('stroke-width', opts.polygon.lineWidth)

		    this.svgPolygon.setRotate(this.angle, this.x, this.y)

		    root.insertBefore(this.svgPolygon.node, this.root.firstChild)
		  }

		  update (coor) {
		    this.x = coor.x
		    this.y = coor.y

		    this.angle += this.rotSpeed

		    this.svgPolygon.setRotate(this.angle, this.x, this.y)
		    this.svgPolygon.setTranslate(this.x - ogW / 2, this.y - ogH / 2)
		  }
		}

		// FUNCTIONS
		Math.radians = deg => deg * Math.PI / 180
		Math.degrees = rad => rad * 180 / Math.PI

		// GENERATORS
		function RGB2Color (r,g,b) {
		  return `rgb(${Math.round(r)},${Math.round(g)},${Math.round(b)})`;
		}

		function* makeColorGradient (frequency1, frequency2, frequency3, phase1, phase2, phase3, inc = .01, center = 128, width = 127, len = 50) {
		  let i = 0
		  let off = 0
		  
		  while (true) {
		    let r = Math.sin(frequency1 * (i + off) + phase1) * width + center
		    let g = Math.sin(frequency2 * (i + off) + phase2) * width + center
		    let b = Math.sin(frequency3 * (i + off) + phase3) * width + center
		    
		    off = yield RGB2Color(r,g,b)
		    i += inc
		  }
		}

		function* getOffset(len, gap) {
		  while (true) {
		    let i = 0
		    while (i < len) {
		      yield i * gap
		      i++
		    }
		  }
		}

		// OTHER SETUP
		let cursor = document.querySelector('#cursor')

		let polygons = []

		let offset
		let gradient = makeColorGradient(.3, .3, .3, 0, 2, 4, .001)

		function setup () {
		  cursor.setAttribute('viewBox', `0 0 ${w} ${h}`)
		  offset = getOffset(opts.polygon.amount, .25)
		  
		  let rotSpeed = opts.polygon.rotationSpeed.start
		  
		  for (let i = 0; i < opts.polygon.amount; i++) {
		    mouse.push({ x: mouseActual.x, y: mouseActual.y })
		    
		    polygons.push(new Polygon(
		      cursor,
		      opts.polygon.point.amount,
		      opts.polygon.angle.start + opts.polygon.angle.delta * i,
		      rotSpeed,
		      opts.polygon.radius.start + opts.polygon.radius.delta * i,
		      gradient.next(offset.next().value).value
		    ))
		    
		    rotSpeed = -((((i + 1) % 2) * 2 - 1) * opts.polygon.rotationSpeed.delta + rotSpeed)
		  }

		  window.requestAnimationFrame(loop)
		}

		function rebuildPolygons () {
		  cancelAnimationFrame(updateRequest)
		  mouse = []
		  polygons = []
		  ogW = w
		  ogH = h
		  cursor.innerHTML = ''
		  setup()
		}

		function loop () {
		  mouse[0] = {x: mouseActual.x, y: mouseActual.y}
		  
		  for (let i = polygons.length - 1; i > 0; i--) {
		    mouse[i].x = (2 * mouse[i].x + mouse[i - 1].x) / 3
		    mouse[i].y = (2 * mouse[i].y + mouse[i - 1].y) / 3
		  }

		  for (let i = 0; i < polygons.length; i++) {
		    polygons[i].color = gradient.next(offset.next().value).value
		    polygons[i].update(mouse[i])
		  }

		  updateRequest = window.requestAnimationFrame(loop)
		}

		function buildGui() {
		  let pc = []
		  
		  let gui = new dat.GUI()
		  pc.push(gui.add(opts, 'fill'))
		  pc.push(gui.add(opts, 'stroke'))

		  let pFold = gui.addFolder('Polygons')
		  pc.push(pFold.add(opts.polygon, 'amount').min(1).step(1))
		  pc.push(pFold.add(opts.polygon, 'lineWidth').min(0))

		  // Point radius doesn't work right now because there's no easy way to fix them
		  // In theory, it should be possible to put each polygon in a g element,
		  // animate the g instead, and put a circle at every point on the polygon
		  //
		  let pointFold = pFold.addFolder('Points')
		  pc.push(pointFold.add(opts.polygon.point, 'amount').min(1).step(1))
		  // pc.push(pointFold.add(opts.polygon.point, 'radius').min(0))

		  let rotFold = pFold.addFolder('Rotation')
		  pc.push(rotFold.add(opts.polygon.rotationSpeed, 'start'))
		  pc.push(rotFold.add(opts.polygon.rotationSpeed, 'delta'))

		  let radFold = pFold.addFolder('Radius')
		  pc.push(radFold.add(opts.polygon.radius, 'start').min(0))
		  pc.push(radFold.add(opts.polygon.radius, 'delta'))

		  let angFold = pFold.addFolder('Angle')
		  pc.push(angFold.add(opts.polygon.angle, 'start'))
		  pc.push(angFold.add(opts.polygon.angle, 'delta'))

		  for (let i = pc.length; i--;) {
		    pc[i].onFinishChange(rebuildPolygons)
		  }
		}

		// POINT OF ENTRY
		setup()
		buildGui()

		window.addEventListener('mousemove', e => {
		  mouseActual.x = e.pageX
		  mouseActual.y = e.pageY
		})
		window.addEventListener('resize', () => {
		  w = window.innerWidth
		  h = window.innerHeight
		  cursor.setAttribute('viewBox', `0 0 ${w} ${h}`)
		})
      